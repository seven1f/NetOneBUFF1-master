package service;

import entity.Goods;
import entity.Page;

import java.util.List;

public interface PageService {
    List<Goods> getAllGoods(Page page);//所有库存
    Long countnews();
    List<Goods> findGoodsByPage(int type, int page);
}
