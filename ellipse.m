classdef ellipse < handle
    
    properties
        xc
        yc
        a
        b
    end
    
    methods
        function this = ellipse(x,y,xscale,yscale)
            this.xc = x;
            this.yc = y;
            this.a = xscale;
            this.b = yscale;
        end
        
        function render(this)
            t = [0:pi/500:2*pi];
            x = this.xc + this.a*cos(t);
            y = this.yc + this.b*sin(t);
            plot(x,y,'LineWidth',2);
            axis equal; set(gcf,'Color',[1 1 1]);
        end
        
   end
    
end

