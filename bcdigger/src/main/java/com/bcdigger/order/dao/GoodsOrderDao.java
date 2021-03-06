package com.bcdigger.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bcdigger.common.page.PageInfo;
import com.bcdigger.core.dao.BaseDaoImpl;
import com.bcdigger.order.entity.GoodsOrder;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

/**
 * 
 * ClassName: GoodsOrderDao
 * @Description: 订单dao
 * @author ipui
 * @date 2018年7月15日
 */
@Repository("goodsOrderDao")
public class GoodsOrderDao extends BaseDaoImpl<GoodsOrder>{
	
	@Autowired
	private SqlSession sqlSession;
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public PageInfo<GoodsOrder> findGoodsOrders(PageInfo pageInfo, GoodsOrder goodsOrder) {
		try{
			Page page = PageHelper.startPage(pageInfo.getPageNum(), pageInfo.getPageSize());
			List<GoodsOrder> list= sqlSession.selectList("listGoodsOrderByCondation", goodsOrder);
			pageInfo.setTotal(page.getTotal());
			pageInfo.setPages(page.getPages());
			pageInfo.setIsFirstPage(page.getPageNum()==1?true:false);
			pageInfo.setIsLastPage(page.getPageNum()==page.getPages()?true:false);
			pageInfo.setList(list);
		}catch(Exception e){
			e.printStackTrace();
		}
		return pageInfo;
	}
	
	public int countGoodsOrder(GoodsOrder goodsOrder) throws Exception {
		int orderNum = 0;
		try{
			orderNum = sqlSession.selectOne("countGoodsOrder", goodsOrder);
		}catch(Exception e){
			e.printStackTrace();
			throw new Exception();
		}
		return orderNum;
	}
	
	public int auditingGoodsOrder(GoodsOrder goodsOrder) throws Exception {
		int result = 0;
		try{
			result = sqlSession.update("auditingGoodsOrder", goodsOrder);
		}catch(Exception e){
			e.printStackTrace();
			throw new Exception();
		}
		return result;
	}
	
	public int updateGoodsOrderState(GoodsOrder goodsOrder) throws Exception {
		int result = 0;
		try{
			result = sqlSession.update("updateGoodsOrderState", goodsOrder);
		}catch(Exception e){
			e.printStackTrace();
			throw new Exception();
		}
		return result;
	}
	
}
