/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.ResultSet;
import util.Conexao;

/**
 *
 * @author M
 */
public class EstadoDAO {
    public static ResultSet rs;
    public static String SQL;
    
    public static ResultSet carregarEstados() {
        SQL = "select cod_estados, sigla from estados";
        
        System.out.println(SQL);
        rs = Conexao.retornarDados(SQL);
        return rs;
    }
    
    public static ResultSet carregarCidades(String cod_estados) {
        SQL = "select cod_cidades, nome from cidades "
                + "where cidades.estados_cod_estados = '" + cod_estados + "'";
        
        System.out.println(SQL);
        rs = Conexao.retornarDados(SQL);
        return rs;
    }
    
}
