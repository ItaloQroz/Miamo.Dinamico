using Miamo.BLL;
using Miamo.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Miamo.API.Controllers
{
    public class ProdutosController : ApiController
    {

        //listar todos Produtos
        [HttpGet]
        public IHttpActionResult Get()
        {

            var produtoBLL = new ProdutoBLL();
            var listaProdutos = produtoBLL.ListarProduto();

            return Ok(listaProdutos);
        }

        //selecionar um Produto por id
        [HttpGet]
        public IHttpActionResult Get(int id)
        {
            var produtoBLL = new ProdutoBLL();
            var produto = produtoBLL.SelecionarProduto(id);

            return Ok(produto);
        }

        //Cadastrar Produto
        [HttpPost]
        public IHttpActionResult Post(ProdutoDTO dados)
        {
            try
            {
                var produtoBLL = new ProdutoBLL();
                produtoBLL.CadastraProduto(dados);

                return Ok();
            }
            catch
            {
                return BadRequest("Erro ao cadastrar");
            }
        }
        
        //Atualizar Produto
        [HttpPut]
        public IHttpActionResult Put(ProdutoDTO dados)
        {
            try
            {
                var produtoBLL = new ProdutoBLL();
                produtoBLL.EditarProduto(dados);

                return Ok();
            }
            catch
            {
                return BadRequest("Erro ao atualizar");
            }
        }

        //Excluir Produto
        [HttpDelete]
        public IHttpActionResult Delete(int id)
        {
            try
            {
                var produtoBLL = new ProdutoBLL();
                produtoBLL.ExcluirProduto(id);

                return Ok();
            }
            catch
            {
                return BadRequest("Erro ao Excluir");
            }
        }


    }
}
