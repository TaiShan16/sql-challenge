﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [TITLES] (
    [title_id] VARCHAR  NOT NULL ,
    [title] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_TITLES] PRIMARY KEY CLUSTERED (
        [title_id] ASC
    )
)

CREATE TABLE [EMPLOYEES] (
    [emp_no] INT  NOT NULL ,
    [emp_title_id] VARCHAR  NOT NULL ,
    [birth_date] VARCHAR  NOT NULL ,
    [first_name] VARCHAR  NOT NULL ,
    [last_name] VARCHAR  NOT NULL ,
    [sex] VARCHAR  NOT NULL ,
    [hire_date] DATE  NOT NULL ,
    CONSTRAINT [PK_EMPLOYEES] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

CREATE TABLE [DEPARTMENTS] (
    [dept_no] VARCHAR  NOT NULL ,
    [dept_name] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_DEPARTMENTS] PRIMARY KEY CLUSTERED (
        [dept_no] ASC
    )
)

CREATE TABLE [DEPT_MANAGER] (
    [dept_no] VARCHAR  NOT NULL ,
    [emp_no] INT  NOT NULL ,
    CONSTRAINT [PK_DEPT_MANAGER] PRIMARY KEY CLUSTERED (
        [dept_no] ASC,[emp_no] ASC
    )
)

CREATE TABLE [DEPT_EMP] (
    [emp_no] INT  NOT NULL ,
    [dept_no] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_DEPT_EMP] PRIMARY KEY CLUSTERED (
        [emp_no] ASC,[dept_no] ASC
    )
)

CREATE TABLE [SALARIES] (
    [emp_no] INT  NOT NULL ,
    [salary] INT  NOT NULL ,
    CONSTRAINT [PK_SALARIES] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

ALTER TABLE [EMPLOYEES] WITH CHECK ADD CONSTRAINT [FK_EMPLOYEES_emp_title_id] FOREIGN KEY([emp_title_id])
REFERENCES [TITLES] ([title_id])

ALTER TABLE [EMPLOYEES] CHECK CONSTRAINT [FK_EMPLOYEES_emp_title_id]

ALTER TABLE [DEPT_MANAGER] WITH CHECK ADD CONSTRAINT [FK_DEPT_MANAGER_dept_no] FOREIGN KEY([dept_no])
REFERENCES [DEPARTMENTS] ([dept_no])

ALTER TABLE [DEPT_MANAGER] CHECK CONSTRAINT [FK_DEPT_MANAGER_dept_no]

ALTER TABLE [DEPT_MANAGER] WITH CHECK ADD CONSTRAINT [FK_DEPT_MANAGER_emp_no] FOREIGN KEY([emp_no])
REFERENCES [EMPLOYEES] ([emp_no])

ALTER TABLE [DEPT_MANAGER] CHECK CONSTRAINT [FK_DEPT_MANAGER_emp_no]

ALTER TABLE [DEPT_EMP] WITH CHECK ADD CONSTRAINT [FK_DEPT_EMP_emp_no] FOREIGN KEY([emp_no])
REFERENCES [EMPLOYEES] ([emp_no])

ALTER TABLE [DEPT_EMP] CHECK CONSTRAINT [FK_DEPT_EMP_emp_no]

ALTER TABLE [DEPT_EMP] WITH CHECK ADD CONSTRAINT [FK_DEPT_EMP_dept_no] FOREIGN KEY([dept_no])
REFERENCES [DEPARTMENTS] ([dept_no])

ALTER TABLE [DEPT_EMP] CHECK CONSTRAINT [FK_DEPT_EMP_dept_no]

ALTER TABLE [SALARIES] WITH CHECK ADD CONSTRAINT [FK_SALARIES_emp_no] FOREIGN KEY([emp_no])
REFERENCES [EMPLOYEES] ([emp_no])

ALTER TABLE [SALARIES] CHECK CONSTRAINT [FK_SALARIES_emp_no]

COMMIT TRANSACTION QUICKDBD