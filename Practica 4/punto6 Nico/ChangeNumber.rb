class ChangeNumber
      def initialize (app)
          @app=app
      end
      
      def call (env)
         status,header,body = @app.call(env)
         new_body=''
         body.each{|dato| new_body << change(body) }
         header['Content-Length'] = new_body.length.to_s
         [status, header, [new_body]]
       end
       
       def change (b)
          "the number is: " + b.first.to_s.gsub(/\d/,'X').to_s
       end  
 end
