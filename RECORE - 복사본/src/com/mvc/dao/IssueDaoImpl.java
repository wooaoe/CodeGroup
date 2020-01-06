package com.mvc.dao;

import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static common.JDBCTemplate.*;

import com.mvc.vo.Vo_Issue;

public class IssueDaoImpl implements IssueDao {

	@Override
	public List<Vo_Issue> I_selectAll() {
		
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Vo_Issue> list = new ArrayList<Vo_Issue>();
		
		
		try {
//			prop.load(new FileReader("C:\\Users\\gofnv\\git\\RECORE\\RECORE_semi_project02\\src\\common\\query.properties"));
//			prop.load(new FileReader("\\issue.properties"));
//			String sql = prop.getProperty("selectAllNews");
			
//			String sql = "SELECT * FROM ISSUE ORDER BY ISS_NO DESC";
			
			
			Properties prop = new Properties();
			String filePath = properties("query_issue.properties");
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("selectAllNews");

			
			
			System.out.println(sql);
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Vo_Issue tmp = new Vo_Issue(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getDate(9),
						rs.getString(10),
						rs.getInt(11),
						rs.getString(12));
				
				list.add(tmp);
				
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs,pstmt,con);
		}
		
		return list;
	}

	public List<Vo_Issue> I_selectAllExhibition(){
		
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Vo_Issue> list = new ArrayList<Vo_Issue>();
		
		
		try {
			
			Properties prop = new Properties();
			String filePath = properties("query_issue.properties");
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("selectAllExhibition");

			
			
			System.out.println(sql);
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Vo_Issue tmp = new Vo_Issue(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getDate(9),
						rs.getString(10),
						rs.getInt(11),
						rs.getString(12));
				
				list.add(tmp);
				
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs,pstmt,con);
		}
		
		return list;
		
	}
	
	
	
	
	@Override
	public Vo_Issue I_selectOne(int iseq) {
		
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		Vo_Issue vo = null;
		
		try {
			Properties prop = new Properties();
			String filePath = properties("query_issue.properties");
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("selectOneNews");
			
			System.out.println(sql);

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, iseq);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new Vo_Issue(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getDate(9),
						rs.getString(10),
						rs.getInt(11),
						rs.getString(12));
			}

			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs,pstmt,con);
		}

		return vo;
	}

	@Override
	public boolean I_insert(Vo_Issue ivo) {

		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		
		
		try {
			Properties prop = new Properties();
			String filePath = properties("query_issue.properties");
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("insertNews");
			
			System.out.println(sql);

			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, ivo.getIss_catd_no());
			pstmt.setString(2, ivo.getIss_title());
			pstmt.setString(3, ivo.getIss_writer());
			pstmt.setInt(4, ivo.getIss_con_count());
			pstmt.setString(5, ivo.getIss_source());
			pstmt.setString(6, ivo.getIss_note());
			
			res = pstmt.executeUpdate();
			
			if(res>0) {
				System.out.println("insert 성공");
				commit(con);
			}
			
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		
		return res>0 ? true : false;
	}

	@Override
	public boolean I_delete(int iseq) {

		
		
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;
		
		
		try {
			Properties prop = new Properties();
			String filePath = properties("query_issue.properties");
			prop.load(new FileInputStream(filePath));
			String sql = prop.getProperty("deleteIssue");
			
			System.out.println(sql);

			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, iseq);


			res = pstmt.executeUpdate();
			
			if(res>0) {
				System.out.println("delete 성공");
				commit(con);
			}

			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		
		return res>0 ? true : false;
	}
	
	
	public int I_getSeqCurrval() {
	
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int i_seq = 0;
		
		
		try {
			Properties prop = new Properties();
			String filePath = properties("query_issue.properties");
			prop.load(new FileInputStream(filePath));
			
			String sql = prop.getProperty("selectIss_seq");
			System.out.println(sql);
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				i_seq = rs.getInt(1);
				
			}
			
			i_seq--;
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs,pstmt,con);
		}
		
		System.out.println(i_seq);
		
		return i_seq;
	}
	
}
