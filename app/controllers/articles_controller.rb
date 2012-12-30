class ArticlesController < ApplicationController

  authorize_resource
  # GET /articles
  # GET /articles.json
  #
  SELECT_PROMPT = 'Select Category'

  def index
    set_up_index_view

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
    @comment = @article.comments.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.json
  def new
    @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.json
  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to manage_articles_url }
      format.json { head :no_content }
    end
  end

  def manage
    set_up_index_view
    @manage_article = true

    respond_to do |format|
      format.html { render action: "index" }
      format.json { render json: @articles }
    end
  end

  def filter_category
    @selected_category = params[:category_name]
    if(@selected_category == 'All' or @selected_category == SELECT_PROMPT) then
      @articles = Article.all
    else
      @articles = Category.find_all_by_name(@selected_category).collect{ |cat| cat.article }
    end
    @category_list = Category.select("distinct(name)").collect{ |item| item.name}
    @category_list << 'All'

    respond_to do |format|
      format.html { render action: "index" }
      format.json { render json: @articles }
    end
  end

  private

  def set_up_index_view
    @articles = Article.all
    @category_list = Category.select("distinct(name)").collect{ |item| item.name}
    @category_list << SELECT_PROMPT
    @selected_category = SELECT_PROMPT
  end

end
