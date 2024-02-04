package com.api.api.repository;

import org.springframework.data.repository.CrudRepository;

import com.api.api.model.Pokemon;

public interface PokemonRepository extends CrudRepository<Pokemon, Integer> {

}