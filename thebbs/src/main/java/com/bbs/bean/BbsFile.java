package com.bbs.bean;

import java.io.Serializable;

/**发表论坛内容存储类
 * @author student
 * @version 1.0.0
 * @createTime 2020年04月08日21:44:07
 */

public class BbsFile implements Serializable{
    private int bbsid;
    private String bbsname;
    private String bbscontent;
    private int bbsrecord;

    public BbsFile() {
    }


    public BbsFile(int bbsid, String bbsname, String bbscontent, int bbsrecord) {
        this.bbsid=bbsid;
        this.bbsname = bbsname;
        this.bbscontent = bbscontent;
        this.bbsrecord = bbsrecord;
    }

    public int getBbsid() {
        return bbsid;
    }

    public void setBbsid(int bbsid) {
        this.bbsid = bbsid;
    }


    public String getBbsname() {
        return bbsname;
    }

    public void setBbsname(String bbsname) {
        this.bbsname = bbsname;
    }

    public String getBbscontent() {
        return bbscontent;
    }

    public void setBbscontent(String bbscontent) {
        this.bbscontent = bbscontent;
    }

    public int getBbsrecord() {
        return bbsrecord;
    }

    public void setBbsrecord(int bbsrecord) {
        this.bbsrecord = bbsrecord;
    }

    @Override
    public String toString() {
        return "BbsFile{" +
                "bbsid='" + bbsid + '\'' +
                "bbsname='" + bbsname + '\'' +
                ", bbscontent='" + bbscontent + '\'' +
                ", bbsrecord=" + bbsrecord +
                '}';
    }
}
