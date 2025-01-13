%dw 2.0
import * from dw::core::Strings
output application/json

/* Requirements:
 * Extract campaign details and calculate effective budget based on predefined rules
 * Calculate click-through rate as a percentage of clicks to impressions
 * Slice campaign names to focus on key identifiers for reporting
 *
 * Expected Output:
 * {
 *   "campaign_summary": [
 *     {
 *       "campaign_id": "CAMP_001",
 *       "name": "Spring Sale",
 *       "effective_budget": 15000,
 *       "click_through_rate": 2.4,
 *       "duration_days": 30
 *     },
 *     {
 *       "campaign_id": "CAMP_002",
 *       "name": "Summer Blast",
 *       "effective_budget": 20000,
 *       "click_through_rate": 3,
 *       "duration_days": 45
 *     }
 *   ]
 * }
 */
---
{
  "campaign_summary": payload.campaigns map ((campaign) -> {
    "campaign_id": campaign.id,
    "name": campaign.name,
    "effective_budget": campaign.budget,
    "click_through_rate": (campaign.performance.clicks / campaign.performance.impressions)*100,
    "duration_days": campaign.duration[0 to -6] as Number
  })
}
