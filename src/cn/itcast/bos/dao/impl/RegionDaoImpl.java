package cn.itcast.bos.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.itcast.bos.dao.IRegionDao;
import cn.itcast.bos.dao.base.BaseDaoImpl;
import cn.itcast.bos.domain.Region;

/**
 * 区域管理Dao
 */
@Repository
public class RegionDaoImpl extends BaseDaoImpl<Region> implements IRegionDao {
	public void saveOrUpdate(Region region) {
		this.getHibernateTemplate().saveOrUpdate(region);
	}

	public List<Region> findAddressByShortCode(String sc) {
		return this.getHibernateTemplate().find("from Region where shortcode=?", sc);
	}

}
