package com.knowledge.infra.server.dao.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.knowledge.infra.server.dao.AnswerDao;
import com.knowledge.infra.server.model.Answer;

@Component("answerDao")
public class AnswerDaoImpl extends SqlSessionDaoSupport implements AnswerDao {
	private static final String ANSWER_DAO_NAMESPACE = "com.knowledge.infra.server.dao.AnswerDao.";

	public Answer getAnswer(Answer answer) {
		return null;
	}

	public void addAnswer(Answer answer) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert(ANSWER_DAO_NAMESPACE + "addAnswer", answer);
	}

	public void updateAnswer(Answer answer) {
		// TODO Auto-generated method stub
		this.getSqlSession().update(ANSWER_DAO_NAMESPACE + "updateAnswer",
				answer);
	}

	public void deleteAnswer(int AnswerId) {
		// TODO Auto-generated method stub
		this.getSqlSession().delete(ANSWER_DAO_NAMESPACE + "deleteAnswer",
				AnswerId);
	}

	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public List<Answer> getAnswers(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList(
				ANSWER_DAO_NAMESPACE + "getAnswersbyMap", param);

	}

	public List<Answer> getMoreAnswersbyLastId(int questionId, int lastAnswerId, Date lastTime, int len) {
		// TODO Auto-generated method stub
		Map<String,Object> param = new HashMap<String,Object>();
		param.put("answerid", lastAnswerId);
		param.put("aupdatetime", lastTime);
		param.put("limitLen", len);
		param.put("areferenceqid", questionId);
		return this.getSqlSession().selectList(
				ANSWER_DAO_NAMESPACE + "getMoreAnswersbyLastId", param);
		
	}

}
