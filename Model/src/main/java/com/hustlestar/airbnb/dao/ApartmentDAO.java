package com.hustlestar.airbnb.dao;

import com.hustlestar.airbnb.dao.exc.DAOException;
import com.hustlestar.airbnb.domain.Apartment;
import com.hustlestar.airbnb.domain.City;
import com.hustlestar.airbnb.domain.Country;
import com.hustlestar.airbnb.domain.criteria.ApartmentCriteria;

import java.util.List;

/**
 * Created by Yauheni_Malashchytsk on 4/4/2017.
 */
public interface ApartmentDAO {

    List<Apartment> getAvailableApartments() throws DAOException;

    List<Apartment> getApartmentByCriteria(ApartmentCriteria criteria) throws DAOException;

    List<Apartment> findApartment(String title) throws DAOException;

    Apartment getApartment(int id) throws DAOException;

    List<Country> getCountries() throws DAOException;

    List<City> getCities() throws DAOException;
}
