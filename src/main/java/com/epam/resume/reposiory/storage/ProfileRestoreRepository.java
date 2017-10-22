package com.epam.resume.reposiory.storage;

import org.springframework.data.repository.CrudRepository;

import com.epam.resume.entity.ProfileRestore;

public interface ProfileRestoreRepository extends CrudRepository<ProfileRestore, Long> {

	ProfileRestore findByToken(String token);
}
