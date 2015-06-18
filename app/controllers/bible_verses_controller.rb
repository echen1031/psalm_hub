class BibleVersesController < ApplicationController

  def index
    @q = BibleVerse.ransack(params[:q])
    @bible_verses = @q.result.limit(176)
    @bible_verses = BibleVerseDecorator.decorate_collection(@bible_verses)

    respond_to do |format|
      format.html
    end
  end

  def show
    @bible_verse = BibleVerse.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @bible_verse }
    end
  end
end
