package site.metacoding.red.web.dto.player;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.red.domain.player.Player;


@Getter
@Setter
public class PlayerInsertReqDto {

	private Integer teamId;
	private String name;
	private String position;
	
	public Player toEntity() {
		Player player = new Player();
		player.setTeamId(teamId);
		player.setName(this.name);
		player.setPosition(position);
		return player;
	}
	
}
