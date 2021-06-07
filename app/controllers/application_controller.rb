class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "cwagrant", password: "seadubya",
    except: [:index, :show]
end
