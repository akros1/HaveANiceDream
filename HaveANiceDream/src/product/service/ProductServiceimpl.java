package product.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import fw.DBUtil;
import product.ProductDTO;
import product.dao.productDAO;
import product.dao.productDAOimpl;

public class ProductServiceimpl implements ProductService {

	@Override
	public int insertProduct(ProductDTO product) {
		Connection connection = null;
		productDAO dao = new productDAOimpl();
		
		int result = 0;
		
		try {
			connection = DBUtil.getConnect();
			result = dao.insertProduct(product, connection);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(connection);
		}
		
		return result;
	}

	@Override
	public ArrayList<ProductDTO> product_List() {
		ArrayList<ProductDTO> product_list = new ArrayList<ProductDTO>();
		Connection connection = null;
		productDAO dao = new productDAOimpl();
		
		int result = 0;
		
		try {
			connection = DBUtil.getConnect();
			product_list = dao.product_List(connection);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(connection);
		}
		
		return product_list;
	}

}