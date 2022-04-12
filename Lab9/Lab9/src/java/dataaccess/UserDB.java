package dataaccess;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import models.User;

public class UserDB {

    public User get(String email) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            User user = em.find(User.class, email);
            return user;
        } finally {
            em.close();
        }
    }

    public User getByUUID(String uuid) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            String email =(String) em.createNativeQuery("Select email from user u where u.reset_password_uuid = (?);").setParameter(1, uuid).getSingleResult();
            User user = em.find(User.class, email);
            return user;
        } finally {
            em.close();
        }
    }

    public void update(User user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(user);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public void setUUID(String uuid, String email) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        em.getTransaction().begin();
        em.createNativeQuery("UPDATE user SET reset_password_uuid = (?) Where email = (?);").setParameter(1, uuid).setParameter(2, email).executeUpdate();
        em.getTransaction().commit();
    }
}
