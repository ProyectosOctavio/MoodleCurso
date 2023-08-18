<?php

class __Mustache_6e76ab71d16be5ec32dde03f0ba20159 extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        $buffer .= $indent . '<div>
';
        $buffer .= $indent . '    <input type="hidden" name="qbshowtext" value="0" id="qbshowtext_off">
';
        $buffer .= $indent . '    <input id="qbshowtext_on" class="searchoptions mr-1" type="checkbox" value="1" name="qbshowtext" ';
        $value = $context->find('checked');
        $buffer .= $this->sectionB4371b1f5468004e60029d5a5dff3d5f($context, $indent, $value);
        $buffer .= '>
';
        $buffer .= $indent . '    <label for="qbshowtext_on">';
        $value = $context->find('str');
        $buffer .= $this->section060adc0f980f767e483a190a860ca07f($context, $indent, $value);
        $buffer .= '</label>
';
        $buffer .= $indent . '</div>
';

        return $buffer;
    }

    private function sectionB4371b1f5468004e60029d5a5dff3d5f(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' checked';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= ' checked';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section060adc0f980f767e483a190a860ca07f(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' showquestiontext, question ';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= ' showquestiontext, question ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

}
