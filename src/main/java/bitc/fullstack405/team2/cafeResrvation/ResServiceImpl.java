package bitc.fullstack405.team2.cafeResrvation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResServiceImpl implements ResService {
  @Autowired
  ResMapper resMapper;

  @Override
  public List<ResDTO> selectResTime(int cafeIdx) throws Exception {
    return resMapper.selectResTime(cafeIdx);
  }

  @Override
  public void insertResInfo(ResDTO res) throws Exception {
    resMapper.insertResInfo(res);
  }

}
