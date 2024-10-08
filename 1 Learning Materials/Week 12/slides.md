---
footer: "![height:50px](https://www.woolorama.com.au/custom/public/images/north-metro-tafe-logo.jpg)"
marp: true
theme: nmt-theme
---

<!-- _class: lead -->
# ICTSS00120 - Artificial Intelligence Skill Set
![bg blur:1px contrast:90%](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/afa6e72c-8df3-4d8a-aba0-d3d8c0404e28/dgeejdo-2636687f-dce2-4182-9061-f44831261ec0.jpg/v1/fill/w_922,h_866,q_70,strp/ai_gaze_by_roguedawg777_dgeejdo-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYyIiwicGF0aCI6IlwvZlwvYWZhNmU3MmMtOGRmMy00ZDhhLWFiYTAtZDNkOGMwNDA0ZTI4XC9kZ2VlamRvLTI2MzY2ODdmLWRjZTItNDE4Mi05MDYxLWY0NDgzMTI2MWVjMC5qcGciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.RSVY32rSmLLuV0Vdf0MN9WCvGH6IeAqAkeZPsUrWwqk)

## Week 12: Understanding CRISP-DM

Lecturer: Jordan Hill

<style scoped>
p {
  padding:0.25em;
  padding-right:1em;
  text-align: right;
}
</style>

---


## Learning Objectives

- **Understand the CRISP-DM methodology and its importance in AI/ML projects.**
- **Apply Phase 1 – Business Understanding of CRISP-DM to a case study.**
- **Recognize the key activities in Phase 2 – Data Understanding.**
- **Explore how Phases 3, 4, & 5 integrate with prior learning.**

---

## What is CRISP-DM?

- **CRISP-DM** stands for **Cross-Industry Standard Process for Data Mining**.
- It provides a **structured approach** for planning and executing data mining projects.
- Widely used in industry for guiding data science and machine learning projects.

![bg right:40% fit](https://www.ibm.com/docs/en/SS3RA7_sub/modeler_crispdm_ddita/clementine/images/crisp_process.jpg)

---

## What do we already know about project management?

### Agile? Waterfall?

![width:50em height:18em](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.crosscountry-consulting.com%2Fwp-content%2Fuploads%2F2022%2F12%2FAdobeStock_393555482-scaled.jpeg&f=1&nofb=1&ipt=a1de54011726add9c207911514503170d41f693e41005af76be7e32228f2eaa8&ipo=images)


---

## CRISP-DM Phases Overview

1. **Business Understanding**
2. **Data Understanding**
3. **Data Preparation**
4. **Modeling**
5. **Evaluation**
6. **Deployment**

![bg right:40% fit](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/CRISP-DM_Process_Diagram.png/639px-CRISP-DM_Process_Diagram.png)

---
## Why do we need this?

### You will be expected to implement CRISP-DM throughout your final project

### Today we will work through each stage in-depth

#### **Reference Materials:**
<div style="display: flex; justify-content:space-around; margin-left:8em">

[![height:300px width:200px](https://learning.oreilly.com/covers/urn:orm:book:9781492047537/400w/)](https://www.oreilly.com/library/view/machine-learning-pocket/9781492047537/ch02.html)

[![height:300px width:200px](https://learning.oreilly.com/covers/urn:orm:book:9781787124462/400w/)](https://learning.oreilly.com/library/view/r-data-mining/9781787124462/05ec6eb6-bd0b-4180-ac01-21f83d8afcc7.xhtml)

[![height:300px](https://www.datascience-pm.com/wp-content/uploads/2024/01/CRISP-DM-thumb-300x300.png)](https://www.datascience-pm.com/crisp-dm-2/)

</div>

---

## Phase 1: Business Understanding

- **Objective**: Understand the project objectives and requirements from a business perspective.
- **Key Steps**:
  - **Determine Business Objectives**
  - **Assess the Situation**
  - **Establish Data Mining Goals**
  - **Produce Project Plan**

![bg right:40%](https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/a-business-man-that-looks-worried-about-questions-floating-around-in-his-head_SKqWJuv0Bj_thumb.jpg)

---


## Activity: Define Business Objectives

- **In Groups**:
  - Choose a hypothetical business scenario or use your project idea.
  - **Identify** the main business objectives.
  - **Discuss** potential challenges and requirements.
- **Share** your findings with the class.

![bg](https://t3.ftcdn.net/jpg/00/72/98/56/360_F_72985661_LU1Xk0YQiPBwOuesuuJgwTn0NPlwP8ob.jpg)

---

## Phase 2: Data Understanding

- **Objective**: Collect initial data and become familiar with it.
- **Key Steps**:
  - **Collect Initial Data**
  - **Describe Data**
  - **Explore Data**
  - **Verify Data Quality**

![bg right:40%](images/data-exploration.jpg)

---

## Importance of Data Collection

- **Accurate and relevant data** is critical for model success.
- **Data Quality Checks**:
  - Missing values
  - Outliers
  - Data consistency
- **Tools and Techniques**:
  - Data visualization
  - Statistical analysis

![bg left:40%](images/data-quality.jpg)

---

## Phases 3, 4, & 5: Preparation, Modeling, Evaluation

<table>

<tr>

<td>

### Phase 3: Data Preparation
<td>

### Phase 4: Modeling

<td>

### Phase 5: Evaluation

</tr>

<tr>
<td>

- Clean and format data for modeling.
- Feature selection and engineering.

<td>

- Select modeling techniques.
- Build and test models.

<td>

- Evaluate model performance.
- Check if business objectives are met.

</table>


---

## Integrating CRISP-DM with Prior Learning

- **Data Preprocessing Techniques** (from Week 2)
  - Applied during **Data Preparation**.
- **Algorithm Selection** (from Week 3)
  - Relevant in the **Modeling** phase.
- **Evaluation Metrics** (from Week 8)
  - Used in the **Evaluation** phase.

![bg left:40%](images/integration.jpg)

---

## Interactive Demo: Applying CRISP-DM

- **Scenario**: Implementing a machine learning model for customer churn prediction.
- **Steps**:
  - Discuss business objectives.
  - Explore and prepare the dataset.
  - Choose and build a model.
  - Evaluate the model's performance.

![bg right:40%](images/interactive-demo.jpg)

---

## Questions & Discussion

- **Any questions about the CRISP-DM methodology?**
- **How can you apply CRISP-DM to your projects?**
- **What challenges might you face in each phase?**

![bg left:40%](images/questions.jpg)

---

## Next Week: Final Project Preparation

- **Apply CRISP-DM** to your project ideas.
- **Prepare datasets** for modeling.
- **Outline your project plan** using the CRISP-DM framework.

![bg right:40%](images/next-steps.jpg)