package com.forest.supia.item.service;

import com.forest.supia.item.dto.SpeciesResponse;
import com.forest.supia.item.repository.ItemRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ItemServiceImpl implements ItemService{

    private final ItemRepository itemRepository;

    @Override
    public List<SpeciesResponse> getDictionary(long memberId, String category) {

        return itemRepository.speciesResponseListJPQL(memberId, category);
    }
}
