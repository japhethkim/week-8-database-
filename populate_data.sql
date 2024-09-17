
-- Insert sample data into Regions
INSERT INTO Regions VALUES 
    (1, 'Region A', TRUE),
    (2, 'Region B', FALSE);

-- Insert sample data into EnergyProviders
INSERT INTO EnergyProviders VALUES 
    (1, 'Provider X', 'Private'),
    (2, 'Provider Y', 'Public');

-- Insert sample data into EnergySources
INSERT INTO EnergySources VALUES 
    (1, 'Solar', TRUE),
    (2, 'Coal', FALSE);

-- Insert sample data into Costs
INSERT INTO Costs VALUES 
    (1, 1, 1, 1, 0.15),
    (2, 2, 2, 2, 0.20);

-- Insert sample data into ImpactMetrics
INSERT INTO ImpactMetrics VALUES 
    (1, 1, 1, 1, 100000, 10),
    (2, 2, 2, 2, 200000, 30);
