package com.pms.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.pms.Entities.PolicyTable;

@Repository
public interface PolicyDataRepo  extends JpaRepository<PolicyTable, String>  {

  
    //public List<Mainuser> findByIdEquals(String a);
    
    @Query("select pt from PolicyTable pt where pt.policyType = :policy order by pt.policyId DESC limit 1 ")
    public PolicyTable findByPolicyType(@Param ("policy") String userid);
    
    
	

}

