
-- Create the Regions table
CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    RegionName VARCHAR(100),
    IsRural BOOLEAN
);

-- Create the EnergyProviders table
CREATE TABLE EnergyProviders (
    ProviderID INT PRIMARY KEY,
    ProviderName VARCHAR(100),
    ProviderType VARCHAR(50)
);

-- Create the EnergySources table
CREATE TABLE EnergySources (
    SourceID INT PRIMARY KEY,
    SourceName VARCHAR(100),
    IsRenewable BOOLEAN
);

-- Create the Costs table
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

-- Create the ImpactMetrics table
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
