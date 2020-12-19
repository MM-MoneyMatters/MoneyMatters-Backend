class TransactionsController < ApplicationController
    def create 
        transaction = Transaction.create(transaction_params)
        render json: transaction
    end

    def update
        transaction = Transaction.find(params[:id])
        transaction.update(transaction_params)
        render json: transaction
    end

    def destroy
        transaction = Transaction.find(params[:id])
        transaction.destroy
    end

    private

    def transaction_params
        params.permit(:name,:amount,:payment_method,:type_id,:due_date)
    end
end
