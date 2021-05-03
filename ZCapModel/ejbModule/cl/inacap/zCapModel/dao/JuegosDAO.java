package cl.inacap.zCapModel.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import cl.inacap.zCapModel.dto.Juego;

/**
 * Session Bean implementation class JuegosDAO
 */
@Stateless
@LocalBean
public class JuegosDAO implements JuegosDAOLocal {

	private static List<Juego> juegos = new ArrayList<>();
    /**
     * Default constructor. 
     */
    public JuegosDAO() {
     
    }

	@Override
	public void save(Juego juego) {
		juegos.add(juego);
	}

	@Override
	public List<Juego> getAll() {
		return juegos;
	}

	@Override
	public void delete(Juego juego) {
		juegos.remove(juego);
	}

	@Override
	public List<Juego> findByName(String nombre) {
		return juegos.stream().filter(j->j.getNombre().toLowerCase().contains(nombre.toLowerCase()))
				.collect(Collectors.toList());
	}

}
