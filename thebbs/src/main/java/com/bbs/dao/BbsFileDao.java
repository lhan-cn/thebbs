package com.bbs.dao;

import com.bbs.bean.BbsFile;

import java.util.List;

/**
 * @author student
 * @version 1.0.0
 * @createTime 2020年04月08日21:48:18
 */

public interface BbsFileDao {
    List<BbsFile> findBbsFile() throws Exception;
}
