classdef ellipse < handle
    
    properties
        xc
        yc
        a
        b
        qVec
        color
    end
    
    methods
        function this = ellipse(x,y,xscale,yscale, q, eColor)
            this.xc = x;
            this.yc = y;
            this.a = xscale;
            this.b = yscale;
            this.qVec = q;
            this.color = eColor;
        end
        
        function render(this)
            t = this.qVec;
            x = this.xc + this.a*cos(t);
            y = this.yc + this.b*sin(t);
            plot(x,y,this.color,'LineWidth',2);
            axis equal; set(gcf,'Color',[1 1 1]);
        end
        
   end
    
end

