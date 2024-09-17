
# Entity Relationship Diagram (ERD)

The ERD designed for this project consists of five key entities:

1. **Regions**: Captures details about whether a region is rural or urban.
2. **EnergyProviders**: Represents companies that supply energy to various regions.
3. **EnergySources**: Indicates the type of energy (e.g., solar, wind, hydro).
4. **Costs**: Stores the cost per unit of energy for different providers and sources across regions.
5. **ImpactMetrics**: Measures the economic and environmental impact of energy access in various regions.

Relationships:
- A region can have multiple energy costs and impact metrics.
- A provider supplies energy to multiple regions and energy sources.
- An energy source is supplied by different providers and affects regions differently.
