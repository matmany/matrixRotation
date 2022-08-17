classdef tranformationsMatrix
    methods (Static)
        function posi = transx(init, value)
            posi = [1 0 0 value; 0 1 0 0; 0 0 1 0; 0 0 0 1]*init;
        end
        function posi = transy(init, value)
            posi = [1 0 0 0; 0 1 0 value; 0 0 1 0; 0 0 0 1]*init;
        end

        function posi = transz(init, value)
            posi = [1 0 0 0; 0 1 0 0; 0 0 1 value; 0 0 0 1]*init;
        end
        function posi = trans(init, dx, dy, dz)
            posi = [1 0 0 dx; 0 1 0 dy; 0 0 1 dz; 0 0 0 1]*init;
        end
        function posi = rotX(start, ang)
            s = sind(ang);
            c = cosd(ang);
            posi = [1 0 0 0; 0 c -s 0; 0 s c 0; 0 0 0 1]*start;
        end
        function posi = rotY(init, ang)
            s = sind(ang);
            c = cosd(ang);
            posi = [c 0 s 0; 0 1 0 0; -s 0 c 0; 0 0 0 1]*init;
        end
        function posi = rotZ(init, ang)
            s = sind(ang);
            c = cosd(ang);
            posi = [c -s 0 0; s c 0 0; 0 0 1 0; 0 0 0 1]*init;
        end
    end
end
