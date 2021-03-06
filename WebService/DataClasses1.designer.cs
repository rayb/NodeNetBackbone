﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.261
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RegistryToolSvc
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="SQL2008R2_838447_dataregistry")]
	public partial class DataClasses1DataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertPatient(Patient instance);
    partial void UpdatePatient(Patient instance);
    partial void DeletePatient(Patient instance);
    partial void InsertProvider(Provider instance);
    partial void UpdateProvider(Provider instance);
    partial void DeleteProvider(Provider instance);
    #endregion
		
		public DataClasses1DataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["SQL2008R2_838447_dataregistryConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClasses1DataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Patient> Patients
		{
			get
			{
				return this.GetTable<Patient>();
			}
		}
		
		public System.Data.Linq.Table<Provider> Providers
		{
			get
			{
				return this.GetTable<Provider>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Patients")]
	public partial class Patient : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _PatientID;
		
		private string _Last;
		
		private string _First;
		
		private System.DateTime _DOB;

        private string _strDOB;
		
		private string _Gender;
		
		private string _LookupKey;
		
		private string _DisplayName;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnPatientIDChanging(int value);
    partial void OnPatientIDChanged();
    partial void OnLastChanging(string value);
    partial void OnLastChanged();
    partial void OnFirstChanging(string value);
    partial void OnFirstChanged();
    partial void OnDOBChanging(System.Nullable<System.DateTime> value);
    partial void OnDOBChanged();
    partial void OnGenderChanging(string value);
    partial void OnGenderChanged();
    partial void OnLookupKeyChanging(string value);
    partial void OnLookupKeyChanged();
    partial void OnDisplayNameChanging(string value);
    partial void OnDisplayNameChanged();
    #endregion
		
		public Patient()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PatientID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int PatientID
		{
			get
			{
				return this._PatientID;
			}
			set
			{
				if ((this._PatientID != value))
				{
					this.OnPatientIDChanging(value);
					this.SendPropertyChanging();
					this._PatientID = value;
					this.SendPropertyChanged("PatientID");
					this.OnPatientIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Last", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Last
		{
			get
			{
				return this._Last;
			}
			set
			{
				if ((this._Last != value))
				{
					this.OnLastChanging(value);
					this.SendPropertyChanging();
					this._Last = value;
					this.SendPropertyChanged("Last");
					this.OnLastChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_First", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string First
		{
			get
			{
				return this._First;
			}
			set
			{
				if ((this._First != value))
				{
					this.OnFirstChanging(value);
					this.SendPropertyChanging();
					this._First = value;
					this.SendPropertyChanged("First");
					this.OnFirstChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DOB", DbType="DateTime")]
		//public System.Nullable<System.DateTime> DOB
        public System.DateTime DOB
        {
			get
			{
				return this._DOB.ToUniversalTime();
			}
			set
			{
				if ((this._DOB != value))
				{
					this.OnDOBChanging(value);
					this.SendPropertyChanging();
					this._DOB = value;
					this.SendPropertyChanged("DOB");
					this.OnDOBChanged();
				}
			}
		}

        public string str_DOB
        {
            get
            {
                return this._DOB.ToUniversalTime().ToString("yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'fff'Z'");
            }
            set
            {

            }
        }
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Gender", DbType="NVarChar(255)")]
		public string Gender
		{
			get
			{
				return this._Gender;
			}
			set
			{
				if ((this._Gender != value))
				{
					this.OnGenderChanging(value);
					this.SendPropertyChanging();
					this._Gender = value;
					this.SendPropertyChanged("Gender");
					this.OnGenderChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LookupKey", DbType="NVarChar(50)")]
		public string LookupKey
		{
			get
			{
				return this._LookupKey;
			}
			set
			{
				if ((this._LookupKey != value))
				{
					this.OnLookupKeyChanging(value);
					this.SendPropertyChanging();
					this._LookupKey = value;
					this.SendPropertyChanged("LookupKey");
					this.OnLookupKeyChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DisplayName", DbType="NVarChar(128)")]
		public string DisplayName
		{
			get
			{
				return this._DisplayName;
			}
			set
			{
				if ((this._DisplayName != value))
				{
					this.OnDisplayNameChanging(value);
					this.SendPropertyChanging();
					this._DisplayName = value;
					this.SendPropertyChanged("DisplayName");
					this.OnDisplayNameChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Providers")]
	public partial class Provider : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ProviderID;
		
		private string _Last;
		
		private string _First;
		
		private string _DisplayName;
		
		private string _ExternalID;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnProviderIDChanging(int value);
    partial void OnProviderIDChanged();
    partial void OnLastChanging(string value);
    partial void OnLastChanged();
    partial void OnFirstChanging(string value);
    partial void OnFirstChanged();
    partial void OnDisplayNameChanging(string value);
    partial void OnDisplayNameChanged();
    partial void OnExternalIDChanging(string value);
    partial void OnExternalIDChanged();
    #endregion
		
		public Provider()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ProviderID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ProviderID
		{
			get
			{
				return this._ProviderID;
			}
			set
			{
				if ((this._ProviderID != value))
				{
					this.OnProviderIDChanging(value);
					this.SendPropertyChanging();
					this._ProviderID = value;
					this.SendPropertyChanged("ProviderID");
					this.OnProviderIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Last", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Last
		{
			get
			{
				return this._Last;
			}
			set
			{
				if ((this._Last != value))
				{
					this.OnLastChanging(value);
					this.SendPropertyChanging();
					this._Last = value;
					this.SendPropertyChanged("Last");
					this.OnLastChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_First", DbType="NVarChar(255)")]
		public string First
		{
			get
			{
				return this._First;
			}
			set
			{
				if ((this._First != value))
				{
					this.OnFirstChanging(value);
					this.SendPropertyChanging();
					this._First = value;
					this.SendPropertyChanged("First");
					this.OnFirstChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DisplayName", DbType="NVarChar(50)")]
		public string DisplayName
		{
			get
			{
				return this._DisplayName;
			}
			set
			{
				if ((this._DisplayName != value))
				{
					this.OnDisplayNameChanging(value);
					this.SendPropertyChanging();
					this._DisplayName = value;
					this.SendPropertyChanged("DisplayName");
					this.OnDisplayNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ExternalID", DbType="NVarChar(50)")]
		public string ExternalID
		{
			get
			{
				return this._ExternalID;
			}
			set
			{
				if ((this._ExternalID != value))
				{
					this.OnExternalIDChanging(value);
					this.SendPropertyChanging();
					this._ExternalID = value;
					this.SendPropertyChanged("ExternalID");
					this.OnExternalIDChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
