@AccessControl.authorizationCheck: #NOT_REQUIRED
define hierarchy ZCDS_MOD_FLIGHT_HIER_ODA2026
  as parent child hierarchy(
    source ZCDS_FLIGHT_HIERA_ODA2026
    child to parent association _Agency
    start where
      AgencyId <> '000000'
    siblings order by
      AgencyId
    multiple parents allowed
    orphans ignore
    cycles breakup
  )
{
  key AgencyId,
  key CustomerId,
  
  $node.parent_id as ParentId,
  $node.node_id as NodeId,
  $node.hierarchy_is_cycle as HierIsCycle,
  $node.hierarchy_is_orphan as HierIsOrphan,
  $node.hierarchy_level as HierLevel,
  $node.hierarchy_parent_rank as HierParentRank,
  $node.hierarchy_rank as HierRank,
  $node.hierarchy_tree_size as HierTreeSize
  
}
