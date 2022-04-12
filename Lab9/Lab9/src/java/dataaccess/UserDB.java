package dataaccess;

import javax.persistence.EntityManager;
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
            User user = em.find(User.class, uuid);
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
}
