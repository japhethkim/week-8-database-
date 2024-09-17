# week-8-database- CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    RegionName VARCHAR(100),
    IsRural BOOLEAN
);

CREATE TABLE EnergyProviders (
    ProviderID INT PRIMARY KEY,
    ProviderName VARCHAR(100),
    ProviderType VARCHAR(50)
);

CREATE TABLE EnergySources (
    SourceID INT PRIMARY KEY,
    SourceName VARCHAR(100),
    IsRenewable BOOLEAN
);

CREATE TABLE Costs (
    CostID INT PRIMARY KEY,
    RegionID INT,
    ProviderID INT,
    SourceID INT,
    CostPerUnit DECIMAL(10, 2),
    FOREIGN KEY (RegionID) REFERENCES Regions(RegionID),
    FOREIGN KEY (ProviderID) REFERENCES EnergyProviders(ProviderID),
    FOREIGN KEY (SourceID) REFERENCES EnergySources(SourceID)
);

CREATE TABLE ImpactMetrics (
    MetricID INT PRIMARY KEY,
    RegionID INT,
    ProviderID INT,
    SourceID INT,
    EconomicImpact DECIMAL(10, 2),
    EnvironmentalImpact DECIMAL(10, 2),
    FOREIGN KEY (RegionID) REFERENCES Regions(RegionID),
    FOREIGN KEY (ProviderID) REFERENCES EnergyProviders(ProviderID),
    FOREIGN KEY (SourceID) REFERENCES EnergySources(SourceID)
);
INSERT INTO Regions VALUES (1, 'Region A', TRUE), (2, 'Region B', FALSE);
INSERT INTO EnergyProviders VALUES (1, 'Provider X', 'Private'), (2, 'Provider Y', 'Public');
INSERT INTO EnergySources VALUES (1, 'Solar', TRUE), (2, 'Coal', FALSE);
INSERT INTO Costs VALUES (1, 1, 1, 1, 0.15), (2, 2, 2, 2, 0.20);
INSERT INTO ImpactMetrics VALUES (1, 1, 1, 1, 100000, 10), (2, 2, 2, 2, 200000, 30);
SELECT Regions.RegionName, EnergyProviders.ProviderName, EnergySources.SourceName, Costs.CostPerUnit
FROM Costs
JOIN Regions ON Costs.RegionID = Regions.RegionID
JOIN EnergyProviders ON Costs.ProviderID = EnergyProviders.ProviderID
JOIN EnergySources ON Costs.SourceID = EnergySources.SourceID;

SELECT Regions.RegionName, AVG(ImpactMetrics.EconomicImpact) AS AvgEconomicImpact
FROM ImpactMetrics
JOIN Regions ON ImpactMetrics.RegionID = Regions.RegionID
GROUP BY Regions.RegionName;
SELECT * FROM ImpactMetrics INTO OUTFILE 'impact_metrics.csv'
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';
