function [T] = matriz(ang_x, desp_x, ang_z, desp_z)

if (ang_x ~= 0) && (ang_z == 0)
    T = [1 0 0 desp_x
        0 cosd(ang_x) sind(-ang_x) 0
        0 sind(ang_x) cosd(ang_x) 0
        0 0 0 1];
end

if (ang_x ~= 0) && (ang_z ~= 0)
    A = [1 0 0 desp_x
        0 cosd(ang_x) sind(-ang_x) 0
        0 sind(ang_x) cosd(ang_x) 0
        0 0 0 1];
    B=[cosd(ang_z) sind(-ang_z) 0 0
        sind(ang_z) cosd(ang_z) 0 0
        0 0 1 desp_z
        0 0 0 1];
    T= A*B;
end

if (ang_x == 0) && (ang_z == 0)

    T = [1 0 0 desp_x
        0 1 0 0
        0 0 0 desp_z
        0 0 0 1];
end

end
