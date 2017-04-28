﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Linq.Expressions;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI.WebControls;
using MedicalSystems.model;

namespace MedicalSystems.classes.contexto
{
    public class Functions
    {

    public static void carregarLista(string tipo, DropDownList objDownList) {

            var ctx = new MedicalSystemEntities();

            switch (tipo.ToLower())
            {
            case "estado":
                
                objDownList.DataSource = ctx.Estadoes.ToList();
                objDownList.DataTextField = "es_nome";
                objDownList.DataValueField = "es_id";
                objDownList.DataBind();
            break;
            case "plano":
                    objDownList.DataSource = ctx.Planoes.ToList();
                    objDownList.DataTextField = "pl_nome";
                    objDownList.DataValueField = "pl_id";
                    objDownList.DataBind();
            break;
                default:
              new Exception("Nao esta configurado ! esta ação escolhida:"+tipo);
            break;
            }
        }

        public static void generateRadioButtonList(char tipo,RadioButton objRadioButtonList)
        {
            switch (tipo)
            {
                case 'M':
                    objRadioButtonList.TabIndex = (Int32) SexoEnum.Masculino;
                    objRadioButtonList.Text = SexoEnum.Masculino.ToString();
                    objRadioButtonList.DataBind();
                break;
                case 'F':
                    objRadioButtonList.TabIndex = (Int32)SexoEnum.Feminino;
                    objRadioButtonList.Text = SexoEnum.Feminino.ToString();
                    objRadioButtonList.DataBind();
                break;
            }
        }
    }



}
