require 'spec_helper'

describe EngineYardContactsController do

  def mock_engine_yard_contacts(stubs={})
    @mock_engine_yard_contacts ||= mock_model(EngineYardContacts, stubs)
  end

  describe "GET index" do
    it "assigns all engine_yard_contacts as @engine_yard_contacts" do
      EngineYardContacts.stub!(:find).with(:all).and_return([mock_engine_yard_contacts])
      get :index
      assigns[:engine_yard_contacts].should == [mock_engine_yard_contacts]
    end
  end

  describe "GET show" do
    it "assigns the requested engine_yard_contacts as @engine_yard_contacts" do
      EngineYardContacts.stub!(:find).with("37").and_return(mock_engine_yard_contacts)
      get :show, :id => "37"
      assigns[:engine_yard_contacts].should equal(mock_engine_yard_contacts)
    end
  end

  describe "GET new" do
    it "assigns a new engine_yard_contacts as @engine_yard_contacts" do
      EngineYardContacts.stub!(:new).and_return(mock_engine_yard_contacts)
      get :new
      assigns[:engine_yard_contacts].should equal(mock_engine_yard_contacts)
    end
  end

  describe "GET edit" do
    it "assigns the requested engine_yard_contacts as @engine_yard_contacts" do
      EngineYardContacts.stub!(:find).with("37").and_return(mock_engine_yard_contacts)
      get :edit, :id => "37"
      assigns[:engine_yard_contacts].should equal(mock_engine_yard_contacts)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created engine_yard_contacts as @engine_yard_contacts" do
        EngineYardContacts.stub!(:new).with({'these' => 'params'}).and_return(mock_engine_yard_contacts(:save => true))
        post :create, :engine_yard_contacts => {:these => 'params'}
        assigns[:engine_yard_contacts].should equal(mock_engine_yard_contacts)
      end

      it "redirects to the created engine_yard_contacts" do
        EngineYardContacts.stub!(:new).and_return(mock_engine_yard_contacts(:save => true))
        post :create, :engine_yard_contacts => {}
        response.should redirect_to(engine_yard_contact_url(mock_engine_yard_contacts))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved engine_yard_contacts as @engine_yard_contacts" do
        EngineYardContacts.stub!(:new).with({'these' => 'params'}).and_return(mock_engine_yard_contacts(:save => false))
        post :create, :engine_yard_contacts => {:these => 'params'}
        assigns[:engine_yard_contacts].should equal(mock_engine_yard_contacts)
      end

      it "re-renders the 'new' template" do
        EngineYardContacts.stub!(:new).and_return(mock_engine_yard_contacts(:save => false))
        post :create, :engine_yard_contacts => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested engine_yard_contacts" do
        EngineYardContacts.should_receive(:find).with("37").and_return(mock_engine_yard_contacts)
        mock_engine_yard_contacts.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :engine_yard_contacts => {:these => 'params'}
      end

      it "assigns the requested engine_yard_contacts as @engine_yard_contacts" do
        EngineYardContacts.stub!(:find).and_return(mock_engine_yard_contacts(:update_attributes => true))
        put :update, :id => "1"
        assigns[:engine_yard_contacts].should equal(mock_engine_yard_contacts)
      end

      it "redirects to the engine_yard_contacts" do
        EngineYardContacts.stub!(:find).and_return(mock_engine_yard_contacts(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(engine_yard_contact_url(mock_engine_yard_contacts))
      end
    end

    describe "with invalid params" do
      it "updates the requested engine_yard_contacts" do
        EngineYardContacts.should_receive(:find).with("37").and_return(mock_engine_yard_contacts)
        mock_engine_yard_contacts.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :engine_yard_contacts => {:these => 'params'}
      end

      it "assigns the engine_yard_contacts as @engine_yard_contacts" do
        EngineYardContacts.stub!(:find).and_return(mock_engine_yard_contacts(:update_attributes => false))
        put :update, :id => "1"
        assigns[:engine_yard_contacts].should equal(mock_engine_yard_contacts)
      end

      it "re-renders the 'edit' template" do
        EngineYardContacts.stub!(:find).and_return(mock_engine_yard_contacts(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested engine_yard_contacts" do
      EngineYardContacts.should_receive(:find).with("37").and_return(mock_engine_yard_contacts)
      mock_engine_yard_contacts.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the engine_yard_contacts list" do
      EngineYardContacts.stub!(:find).and_return(mock_engine_yard_contacts(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(engine_yard_contacts_url)
    end
  end

end
