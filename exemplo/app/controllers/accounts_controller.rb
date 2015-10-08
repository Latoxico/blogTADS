class AccountsController < ApplicationController
    def listar_contas
       @accounts = Account.all
    end
end
