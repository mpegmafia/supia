package com.forest.supia.item.controller;

import com.forest.supia.item.dto.SpeciesResponse;
import com.forest.supia.item.service.ItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/items")
@RequiredArgsConstructor
public class ItemController {

    private final ItemService itemService;

    @GetMapping
    public ResponseEntity<?> getDictionary(@RequestParam("memberId") long memberId, @RequestParam("category") String category) throws Exception {
        List<SpeciesResponse> categoryResponseList = itemService.getDictionary(memberId, category);
        return ResponseEntity.ok(categoryResponseList);
    }
}
