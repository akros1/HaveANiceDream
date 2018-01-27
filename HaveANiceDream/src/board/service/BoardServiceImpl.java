package board.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import board.dao.BoardDAO;
import board.dao.BoardDAOImpl;
import board.dto.BoardDTO;
import fw.DBUtil;
import point.dao.PointDAO;
import point.dao.PointDAOImpl;
import point.dto.PointDTO;
import user.dao.UserDAO;
import user.dao.UserDAOImpl;
import user.dto.MemberDTO;

public class BoardServiceImpl implements BoardService {

	@Override
	public int boardInsert(BoardDTO boardwrite) {
		Connection connection = null;
		int rowNum = 0;

		try {
			connection = DBUtil.getConnect();
			connection.setAutoCommit(false);

			BoardDAO dao = new BoardDAOImpl();
			rowNum = dao.boardInsert(boardwrite, connection);


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			DBUtil.close(connection);
		}

		return rowNum;
	}


}
