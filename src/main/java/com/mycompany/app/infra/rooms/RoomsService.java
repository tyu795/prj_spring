
  package com.mycompany.app.infra.rooms;
  
  import java.util.List;
  
  public interface RoomsService {
  
  public List<Rooms> selectList(RoomsVo vo);
  public Rooms selectOne(RoomsVo vo);
  
  
  public int insert(Rooms dto);
  public int delete(Rooms dto);
  public int uelete(Rooms dto);
  public int update(Rooms dto);
  
 
  }
