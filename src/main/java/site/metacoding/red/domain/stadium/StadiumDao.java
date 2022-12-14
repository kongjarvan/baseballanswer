package site.metacoding.red.domain.stadium;

import java.util.List;
import java.util.Map;

public interface StadiumDao {
	public List<Stadium> findAll();
	public Stadium findById(Integer id);
	public void insert(Stadium stadium);
	public void update(Integer id, Stadium stadium);
	public void deleteById(List<Integer> id);
}
