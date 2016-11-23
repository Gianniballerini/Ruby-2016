class CountX
      def initialize (app)
          @app=app
      end
      
      def call (env)
         status,header,body = @app.call(env)
         header['X-Xs-Count']=count(body)
         [status, header, body]
       end
       
       def count (b)
          b.first.to_s.gsub(/\d/,'X').scan(/X/).count.to_s
       end  
 end

