for j=1:20
    class=num2str(j);
    addpath('/Users/temp/Documents/semantic_contours/code/exp_figure/');
    folder=['/Users/temp/Documents/semantic_contours/data/result/examples/COCO/coco_',class,'_2'];
    files=dir(fullfile(folder,'*.png'));
    for i=1:min(length(files),20)
        data=imread(fullfile(folder,files(i).name));
        data=1-double(data)/255;
        data=ordfilt2(data,1,true(4));
        imshow(data);
        colormap('gray');
        [~,name,~]=fileparts(files(i).name);
        export_fig(fullfile(folder,[name,'_2.png']));
    end
end