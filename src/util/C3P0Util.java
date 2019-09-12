package util;


import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;

public class C3P0Util {
    public static DataSource ds=new ComboPooledDataSource();

    public static DataSource getDs() {
        return ds;
    }

    public static void main( String[] args ) {
        System.out.println(C3P0Util.getDs());
    }
}
