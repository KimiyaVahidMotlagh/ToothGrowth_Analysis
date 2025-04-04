# **Tooth Growth Analysis: Statistical Report**  
**Investigating Vitamin C Effects on Guinea Pig Tooth Length**  

# **Table of Contents**  
1. [Project Overview](#project-overview)  
2. [Key Findings](#key-findings)  
3. [Dataset Description](#dataset-description)  
4. [Methodology](#methodology)  
5. [Statistical Results](#statistical-results)  
6. [Assumption Checks](#assumption-checks)  
7. [How to Reproduce](#how-to-reproduce)  
8. [Dependencies](#dependencies)  


# **Project Overview**  
This study analyzes the `ToothGrowth` dataset in R to determine:  
- How **Vitamin C dosage** (0.5, 1, 2 mg/day) affects tooth length.  
- Whether the **delivery method** (Orange Juice vs. Ascorbic Acid) influences results.  
- Interaction effects between dosage and supplement type.  

**Tools Used**: Two-way ANOVA, Tukey HSD post-hoc tests, and boxplot visualization.  


# **Key Findings**  
✔ **Dosage is highly significant** (p < 0.001): Higher doses increase tooth growth.  
✔ **Supplement type matters** (p < 0.001): OJ outperforms VC at lower doses.  
✔ **Interaction effect detected** (p = 0.022): OJ’s advantage diminishes at 2 mg/day.  

**Top Performance Metrics**:  
- **Model R²**: 0.794 (77.5% variance explained).  
- **Most Distinct Groups**: 0.5 mg vs. 2 mg (Mean diff: 15.50, p < 0.001).  



# **Dataset Description**  
| Variable | Type | Description |  
|----------|------|-------------|  
| `len` | Numeric | Tooth length (mm) |  
| `supp` | Factor | Supplement type (OJ or VC) |  
| `dose` | Factor | Dosage level (0.5, 1, 2 mg/day) |  

**Sample Size**: 60 observations (20 per dosage).  



# **Methodology**  
#### **1. Two-Way ANOVA**  
- **Model**: `len ~ dose * supp`  
- **Hypotheses**:  
  - *Null*: No effect of dose/supplement.  
  - *Alternative*: Significant effects exist.  

#### **2. Post-Hoc Analysis**  
- **Tukey HSD Test**: Identifies which dosage pairs differ significantly.  

#### **3. Assumption Verification**  
- **Homogeneity of variance**: Levene’s Test.  
- **Normality**: Q-Q plot residuals.  



# **Statistical Results**  
#### **ANOVA Summary**  
| Effect | F-value | p-value | Significance |  
|--------|---------|---------|--------------|  
| Dose | 92.000 | < 0.001 | *** |  
| Supplement | 15.572 | < 0.001 | *** |  
| Dose × Supplement | 4.107 | 0.022 | * |  

#### **Tukey HSD Comparisons**  
| Groups | Mean Difference | 95% CI | p-value |  
|--------|-----------------|----------------|---------|  
| 0.5 vs 1.0 | +9.13 | [6.36, 11.90] | < 0.001 |  
| 0.5 vs 2.0 | +15.50 | [12.73, 18.26] | < 0.001 |  
| 1.0 vs 2.0 | +6.37 | [3.60, 9.13] | < 0.001 |  




# **Assumption Checks**  
1. **Homogeneity of Variance**:  
   - Levene’s Test (p = 0.34) → Assumption met.  
2. **Normality**:  
   - Residuals followed a normal distribution (Q-Q plot verified).  


# **How to Reproduce**  
1. **Install R Packages**:  
   ```r
   install.packages(c("ggplot2", "car"))
   ```
2. **Run Analysis**:  
   ```r
   source("tooth_growth_analysis.R")
   ```


# **Dependencies**  
- **R Version**: ≥ 3.5.0  
- **Packages**: `ggplot2`, `car`, `stats`  

