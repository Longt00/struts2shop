package addHibernateFile;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateSessionFactory {
    private static SessionFactory sessionFactory;
    public static Session getSession() {
        return getSessionFactory().openSession();
    }
    public static SessionFactory getSessionFactory(){
        if (sessionFactory == null || sessionFactory.isClosed()) {
            sessionFactory = new Configuration().configure().buildSessionFactory();
        }
        return sessionFactory;
    }
}
