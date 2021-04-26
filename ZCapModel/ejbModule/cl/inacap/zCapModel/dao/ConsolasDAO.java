package cl.inacap.zCapModel.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import cl.inacap.zCapModel.dto.Consola;

/**
 * Session Bean implementation class ConsolasDAO
 */
@Stateless
@LocalBean
public class ConsolasDAO implements ConsolasDAOLocal {

	private static List<Consola> consolas = new ArrayList<>();


	@Override
	public void save(Consola consola) {
		consolas.add(consola);
	}

	@Override
	public List<Consola> getAll() {
		// TODO Auto-generated method stub
		return consolas;
	}

	@Override
	public void delete(Consola consola) {
		// TODO Auto-generated method stub
		consolas.remove(consola);
	}

	@Override
	public List<Consola> filterByName(String nombre) {
	
//		List<Consola> aux = new ArrayList<>();
//		for(Consola c: consolas) {
//			if(c.getNombre().contains(nombre)) {
//				aux.add(c);
//			}
//		}
//		return aux;
		return consolas.stream().filter(c->c.getNombre().contains(nombre)).collect(Collectors.toList());
	}

}
