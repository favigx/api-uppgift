package com.api.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.api.api.model.Pokemon;
import com.api.api.service.PokemonService;

@RestController
@CrossOrigin(origins = "http://127.0.0.1:5500/")
public class PokemonController {

    private PokemonService pokemonService;

    @Autowired
    public PokemonController(PokemonService pokemonService) {
        this.pokemonService = pokemonService;
    }

    @GetMapping("/pokemons")
    public Iterable<Pokemon> getPokemons() {
        return pokemonService.getPokemons();
    }

    @PostMapping("/catch-pokemon")
    public Pokemon catchPokemon(@RequestBody Pokemon pokemon) {
        return pokemonService.catchPokemon(pokemon);
    }

    @DeleteMapping("/delete-pokemon/{pokemonId}")
    public void deletePokemon(@PathVariable int pokemonId) {
        pokemonService.deletePokemon(pokemonId);
    }
}