package org.ale.thot.domain;

import java.util.List;

/**
 * DAO to handle {@link Session} related stuff.
 */
public interface SessionDao {

	List<Session> getAllSessions();
	
	/** returns all sessions for a specific date */
	List<Session> getSessionsByDate(String date);
	
	void saveSession(Session session);

	Session getSessionById(String id);	
}
