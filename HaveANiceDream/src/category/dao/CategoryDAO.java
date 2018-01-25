package category.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import category.CategoryDTO;
import category.CategoryDetailDTO;


public interface CategoryDAO {
     
       ArrayList<CategoryDTO>  categoryList(String categoryName,Connection connection) throws SQLException;
       ArrayList<CategoryDetailDTO>  categoryDetailList(String categoryName ,Connection connection) throws SQLException;
       ArrayList<CategoryDetailDTO>  categoryDetailListAjax(String categoryName ,Connection connection) throws SQLException;
}
