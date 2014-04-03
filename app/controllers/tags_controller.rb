class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render('tags/index.html.erb')
  end

  def show
    @tag = Tag.find(params[:id])
    render('tags/show.html.erb')
  end

  def new
    @tag = Tag.new
    render('tags/new.html.erb')
  end

  def create
    @tag = Tag.new(:name => params[:name])
    if @tag.save
      redirect_to("/tags/#{@tag.id}")
    else
      render('tags/new.html.erb')
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    render('tags/edit.html.erb')
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(:name => params[:name])
      redirect_to("/tags/#{@tag.id}")
    else
      render('tags/edit.html.erb')
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    render('tags/destroy.html.erb')
  end
end
