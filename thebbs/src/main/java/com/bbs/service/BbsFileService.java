package com.bbs.service;

import com.bbs.bean.BbsFile;
import com.bbs.bean.User;

import java.util.List;

/**发表论坛服务类
 * @author student
 * @version 1.0.0
 * @createTime 2020年04月08日21:54:59
 */
public interface BbsFileService {
    List<BbsFile> findBbsFile() throws Exception;
    void insert(BbsFile bbsFile) throws Exception;
}
