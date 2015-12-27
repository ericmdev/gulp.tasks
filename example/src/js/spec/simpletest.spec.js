describe('Simple Test:', function()
{
    'use strict';
    
    var example = true;

    beforeEach(function()
    {
    });

    afterEach(function()
    {
    });

    it('not null', function()
    {
        expect(example).not.toBe(null);
    });

    it('should call load', function()
    {
    });

    it('a is in fact "Hello World!" and b to be not null', function()
    {
        var a = 'Hello World!';
        var b = true;
        expect(a).toBe('Hello World!');
        expect(b).not.toBe(null);
    });
});