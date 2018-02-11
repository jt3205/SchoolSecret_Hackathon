package service;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import dao.GoodDAO;
import dao.SecretDAO;
import dao.TargetDAO;
import dao.UserDAO;
import domain.SecretVO;
import domain.TargetVO;

public class SecretService {
	TargetDAO targetDAO = new TargetDAO();
	SecretDAO secretDAO = new SecretDAO();
	GoodDAO goodDAO = new GoodDAO();
	public void insertSecret(SecretVO vo, String targets[]) {
		secretDAO.insertSecret(vo);
		
		TargetVO[] targetVO = new TargetVO[targets.length];
		for (int i = 0; i < targetVO.length; i++) {
			targetVO[i] = new TargetVO();
			targetVO[i].setSecretId(secretDAO.getLastSecret());
			targetVO[i].setTargetId(targets[i]);
		}
		targetDAO.insertTargets(targetVO);
	}
	
	public String getSecretJson(int num) {
		Gson gson = new Gson();
		JsonArray jsonArray = new JsonArray();
		SecretVO vo[] = secretDAO.getSecrets(num, 5);
		GoodDAO goodDAO = new GoodDAO();
		for (int i = 0; i < 5; i++) {
			JsonObject jsonObject = new JsonObject();
			jsonObject.addProperty("id", vo[i].getId());
			jsonObject.addProperty("from", vo[i].getOwnerId());
			jsonObject.addProperty("school", new UserDAO().getSchool(vo[i].getOwnerId()));
			JsonArray targetArray = new JsonArray();
			String targets[] = targetDAO.getTargets(vo[i].getId());
			for (int j = 0; j < targets.length; j++) {
				targetArray.add(targets[j]);
			}
			jsonObject.add("to", targetArray);
			jsonObject.addProperty("contents", vo[i].getContents());
			jsonObject.addProperty("good", goodDAO.getGoodNum(vo[i].getId()));
			jsonArray.add(jsonObject);
		}
		return gson.toJson(jsonArray);
	}
	public String getBestSecretJson(int num) {
		Gson gson = new Gson();
		JsonArray jsonArray = new JsonArray();
		SecretVO vo[] = goodDAO.getBestSecrets(num, 5);
		for (int i = 0; i < 5; i++) {
			JsonObject jsonObject = new JsonObject();
			jsonObject.addProperty("id", vo[i].getId());
			jsonObject.addProperty("from", vo[i].getOwnerId());
			jsonObject.addProperty("school", new UserDAO().getSchool(vo[i].getOwnerId()));
			JsonArray targetArray = new JsonArray();
			String targets[] = targetDAO.getTargets(vo[i].getId());
			for (int j = 0; j < targets.length; j++) {
				targetArray.add(targets[j]);
			}
			jsonObject.add("to", targetArray);
			jsonObject.addProperty("contents", vo[i].getContents());
			jsonObject.addProperty("good", goodDAO.getGoodNum(vo[i].getId()));
			jsonArray.add(jsonObject);
		}
		return gson.toJson(jsonArray);
	}
	
	public String getSchoolSecretJson(String school, int num) {
		Gson gson = new Gson();
		JsonArray jsonArray = new JsonArray();
		SecretVO vo[] = secretDAO.getSchoolSecrets(school, num);
		for (int i = 0; i < 5; i++) {
			JsonObject jsonObject = new JsonObject();
			jsonObject.addProperty("id", vo[i].getId());
			jsonObject.addProperty("from", vo[i].getOwnerId());
			JsonArray targetArray = new JsonArray();
			String targets[] = targetDAO.getTargets(vo[i].getId());
			for (int j = 0; j < targets.length; j++) {
				targetArray.add(targets[j]);
			}
			jsonObject.add("to", targetArray);
			jsonObject.addProperty("contents", vo[i].getContents());
			jsonObject.addProperty("goodNum", goodDAO.getGoodNum(vo[i].getId()));
			jsonArray.add(jsonObject);
		}
		return gson.toJson(jsonArray);
	}
}
