package spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import spring.dao.surgicalDrapeMapper;
import spring.pojo.ZsDot;

import java.util.List;

@Service
public class surgicalDrapeService {
    @Autowired
    surgicalDrapeMapper sm;

    public List<ZsDot> surgicalDrapeTable() {
        return sm.surgicalDrapeTable();
    }
}
